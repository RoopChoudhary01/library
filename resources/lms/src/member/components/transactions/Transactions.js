import React from 'react';
import {Row, Col, Card, CardBody} from 'reactstrap';
import {connect} from 'react-redux';
import PropTypes from 'prop-types';
import HeaderTitle from "../../../shared/header-title/HeaderTitle";
import ReactDataTable from "../../../shared/table/ReactDataTable";
import ProgressBar from "../../../shared/progress-bar/ProgressBar";
import {dateFormatter, getFormattedMessage} from "../../../shared/sharedMethod";
import {icon} from "../../../constants";
import {fetchTransactions} from "../../store/actions/transactionsAction";
import currencyFile from "../currencies/currencies.json"

const Transactions = (props) => {
    const {transactions, totalRecordMember, isLoading, fetchTransactions} = props;

    const onChange = (filter) => {
        fetchTransactions(filter, true);
    };

    const getCurrency = (id) => {
      const transArray = transactions.filter((tra)=> tra.id === id)
        const cure = currencyFile.filter((item)=> item.code.toLowerCase() === transArray[0].meta.currency)
        return cure && cure[0].symbol
    }

    const itemsValue = transactions.length >= 0 && transactions.map(trans => ({
        plan_name: trans.subscription_plan.name,
        amount: trans.amount,
        date: dateFormatter(trans.created_at),
        id: trans.id,
        currency : getCurrency(trans.id)
    }));

    const columns = [
        {
            name: getFormattedMessage("transaction.table.plan-name.column.title"),
            selector: 'plan_name',
            width: "600px",
            sortable: true,
            cell: row => row.plan_name
        },
        {
            name: getFormattedMessage("transaction.table.amount.column.title"),
            selector: 'amount',
            width: '400px',
            sortable: true,
            cell: row => <span>{row.currency + " " + row.amount }</span>
        },
        {
            name: getFormattedMessage("transaction.table.date.column.title"),
            selector: 'created_at',
            width: '400px',
            sortable: true,
            cell: row => row.date,
        }
    ];

    return (
        <Row className="animated fadeIn">
            <Col sm={12} className="mb-2">
                <HeaderTitle title="Transactions"/>
                <h5 className="page-heading">{getFormattedMessage('transaction.title')}</h5>
                <ProgressBar/>
            </Col>
            <Col sm={12}>
                <div className="sticky-table-container">
                    <Card>
                        <CardBody>
                            <ReactDataTable items={itemsValue} columns={columns} loading={isLoading} totalRows={totalRecordMember}
                                            emptyStateMessageId="transaction.empty-state.title"
                                            emptyNotFoundStateMessageId="transaction.not-found.empty-state.title"
                                            onChange={onChange} icon={(icon.BOOK)}/>
                        </CardBody>
                    </Card>
                </div>
            </Col>
        </Row>
    );
};

Transactions.propTypes = {
    fetchTransactions: PropTypes.func,
    totalRecordMember: PropTypes.number,
    isLoading: PropTypes.bool,
    transactions: PropTypes.array
};

const mapStateToProps = (state) => {
    const {transactions, isLoading, totalRecordMember} = state;
    return {transactions, isLoading, totalRecordMember};
};

export default connect(mapStateToProps, {fetchTransactions})(Transactions);

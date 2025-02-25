import React, {useEffect} from 'react';
import {connect} from 'react-redux';
import {Row, Col} from 'reactstrap';
import PropTypes from 'prop-types';
import ProgressBar from '../../../shared/progress-bar/ProgressBar';
import HeaderTitle from "../../../shared/header-title/HeaderTitle";
import {getFormattedMessage} from "../../../shared/sharedMethod";
import CurrentPlanForm from "./CurrentPlanForm";

const CurrentPlan = (props) => {
    const {currentPlanDetails, allSettings} = props
    if (!currentPlanDetails && !allSettings) {
        return <ProgressBar/>;
    }

    return (
        <div className="animated fadeIn">
            <HeaderTitle title="Membership Plan"/>
            <Row>
                <Col sm={12} className="mb-2 d-flex justify-content-between">
                    <h5 className="pull-left text-dark">{getFormattedMessage("membership-plan.title")}</h5>
                </Col>
                <Col sm={12}>
                    <CurrentPlanForm/>
                </Col>
            </Row>
        </div>
    )
};

CurrentPlan.propTypes = {
    history: PropTypes.object,
    currentPlanDetails: PropTypes.func,
};

const mapStateToProps = (state) => {
    const {currentPlanDetails, allSettings} = state;
    return {currentPlanDetails, allSettings}
};

export default connect(mapStateToProps)(CurrentPlan);

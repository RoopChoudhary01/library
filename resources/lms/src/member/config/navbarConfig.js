import React from 'react';
import {getFormattedMessage} from "../../shared/sharedMethod";
import { CNavItem } from '@coreui/react'

    const _nav = [
        {
            component: CNavItem,
            name: getFormattedMessage("books.title"),
            to: '/app/books',
            icon: <i className="fa fa-book nav-icons"/>,
        },
        {
            component: CNavItem,
            name: getFormattedMessage("book-history.title"),
            to: '/app/book-history',
            icon: <i className="fas fa-book-reader nav-icons"/>,
        },
        {
            component: CNavItem,
            name: getFormattedMessage("book-request.title"),
            to: '/app/book-requests',
            icon: <i className="fas fa-book nav-icons"/>,
        },
        {
            component: CNavItem,
            name: getFormattedMessage("e-book.title"),
            to: '/app/e-books',
            icon: <i className="fas fa-book nav-icons"/>,
        },
        {
            component: CNavItem,
            name: getFormattedMessage("transaction.title"),
            to: '/app/member-transactions',
            icon: <i className="fa fa-money nav-icons"/>,

        },
    ]
export default _nav;

import React, {lazy} from 'react';
// import MemberPlan from "./components/memberplan/MemberPlan";

//routes

const Books = lazy(() => import('./components/book-search/BookSearch'));
const MemberProfile = lazy(() => import('./components/member-profile/MemberProfile'));
const BookHistory = lazy(() => import('./components/book-history/BookHistory'));
const BookRequests = lazy(() => import('./components/book-requests/BookRequests'));
const Ebooks = lazy(() => import('./components/E-books/Ebooks'));
const MemberPlan = lazy(()=> import("./components/memberplan/MemberPlan"))
const Transaction = lazy(()=> import("./components/transactions/Transactions"))
const CurrentPlan = lazy(()=> import("./components/current-membership-plan/CurrentPlan"))
export default [
    {
        path: '/app/books',
        exact: true,
        name: 'Books',
        component: Books
    },
    {
        path: '/app/book-history',
        exact: true,
        name: 'Book History',
        component: BookHistory
    },
    {
        path: '/app/member-profile',
        exact: true,
        name: 'MemberProfile',
        component: MemberProfile
    },
    {
        path: '/app/book-requests',
        exact: true,
        name: 'BookRequests',
        component: BookRequests
    },
    {
        path: '/app/e-books',
        exact: true,
        name: 'E-Books',
        component: Ebooks
    },
    {
        path: '/app/member-plan',
        exact: true,
        name: 'MemberPlan',
        component: MemberPlan
    },
    {
        path: '/app/member-transactions',
        exact: true,
        name: 'Transaction',
        component: Transaction
    },
    {
        path: '/app/current-plan',
        exact: true,
        name: 'CurrentPlan',
        component: CurrentPlan
    },
];

import {membershipPlanActionType} from '../../constants';
import apiConfig from '../../config/apiConfig';
import {setLoading} from '../../../store/action/progressBarAction';
import {addToast} from '../../../store/action/toastAction';
import {toastType} from '../../constants';
import {apiBaseURL} from "../../../constants";


export const createMembershipPaymentSession = (plan_id) => async (dispatch) => {
    dispatch(setLoading(true));
    await apiConfig.post(apiBaseURL.CREATE_MEMBERSHIP_PAYMENT_SESSION + `/${plan_id}`)
        .then((response) => {
            dispatch({ type: membershipPlanActionType.FETCH_SESSION_ID, payload: response.data.data.sessionId });
            // dispatch(setLoading(false));
        })
        .catch(({ response }) => {
            dispatch(addToast({ text: response.data.message, type: toastType.ERROR }));
            dispatch(setLoading(false));
        });
};

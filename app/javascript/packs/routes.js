
//routerの設定ファイル
import AwsAccounts from 'components/AwsAccounts'
import CreateAwsAccounts from 'components/CreateAwsAccounts'
const routes = [
  { path:'/awsaccounts', component: AwsAccounts },
  { path:'/createawsaccounts', component: CreateAwsAccounts }
]

export default routes

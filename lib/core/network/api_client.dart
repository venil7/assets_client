import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:assets_client/features/auth/data/models/login_request_model.dart';
import 'package:assets_client/features/auth/data/models/auth_response_model.dart';
import 'package:assets_client/features/profile/data/models/profile_model.dart';
import 'package:assets_client/features/profile/data/models/user_preferences_model.dart';
import 'package:assets_client/features/profile/data/models/update_profile_request_model.dart';
import 'package:assets_client/features/profile/data/models/change_password_request_model.dart';
import 'package:assets_client/features/profile/data/models/summary_model.dart';
import 'package:assets_client/features/profile/data/models/user_model.dart';
import 'package:assets_client/features/portfolio/data/models/portfolio_model.dart';
import 'package:assets_client/features/asset/data/models/asset_model.dart';
import 'package:assets_client/features/asset/data/models/transaction_model.dart';
import 'package:assets_client/features/lookup/data/models/quote_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // ============ Auth Endpoints ============
  @POST('/login')
  Future<AuthResponseModel> login(
    @Body() LoginRequestModel request,
  );

  @GET('/auth/refresh_token')
  Future<AuthResponseModel> refreshToken();

  // ============ Profile Endpoints ============
  @GET('/profile')
  Future<ProfileModel> getProfile();

  @PUT('/profile')
  Future<ProfileModel> updateProfile(
    @Body() UpdateProfileRequestModel request,
  );

  @POST('/profile')
  Future<ProfileModel> changePassword(
    @Body() ChangePasswordRequestModel request,
  );

  @DELETE('/profile')
  Future<IdResponseModel> deleteProfile();

  // ============ User Preferences Endpoints ============
  @GET('/prefs')
  Future<UserPreferencesModel> getPreferences();

  @PUT('/prefs')
  Future<UserPreferencesModel> updatePreferences(
    @Body() UserPreferencesModel request,
  );

  // ============ User Management Endpoints (Admin) ============
  @GET('/users')
  Future<List<UserModel>> getAllUsers();

  @GET('/users/{user_id}')
  Future<UserModel> getUserById(
    @Path('user_id') int userId,
  );

  @POST('/users')
  Future<UserModel> createUser(
    @Body() CreateUserRequestModel request,
  );

  @PUT('/users/{user_id}')
  Future<UserModel> updateUser(
    @Path('user_id') int userId,
    @Body() UpdateUserRequestModel request,
  );

  @DELETE('/users/{user_id}')
  Future<IdResponseModel> deleteUser(
    @Path('user_id') int userId,
  );

  // ============ Summary Endpoint ============
  @GET('/summary')
  Future<SummaryModel> getSummary(
    @Query('range') String? range,
  );

  // ============ Portfolio Endpoints ============
  @POST('/portfolios')
  Future<PortfolioModel> createPortfolio(
    @Body() CreatePortfolioRequestModel request,
  );

  @GET('/portfolios')
  Future<List<PortfolioModel>> getAllPortfolios(
    @Query('range') String? range,
  );

  @GET('/portfolios/{portfolio_id}')
  Future<PortfolioModel> getPortfolio(
    @Path('portfolio_id') int portfolioId,
    @Query('range') String? range,
  );

  @PUT('/portfolios/{portfolio_id}')
  Future<PortfolioModel> updatePortfolio(
    @Path('portfolio_id') int portfolioId,
    @Body() UpdatePortfolioRequestModel request,
  );

  @DELETE('/portfolios/{portfolio_id}')
  Future<IdResponseModel> deletePortfolio(
    @Path('portfolio_id') int portfolioId,
  );

  // ============ Asset Endpoints ============
  @POST('/portfolios/{portfolio_id}/assets')
  Future<AssetModel> createAsset(
    @Path('portfolio_id') int portfolioId,
    @Body() CreateAssetRequestModel request,
  );

  @GET('/portfolios/{portfolio_id}/assets')
  Future<List<AssetModel>> getAssets(
    @Path('portfolio_id') int portfolioId,
    @Query('range') String? range,
  );

  @GET('/portfolios/{portfolio_id}/assets/{asset_id}')
  Future<AssetModel> getAsset(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Query('range') String? range,
  );

  @PUT('/portfolios/{portfolio_id}/assets/{asset_id}')
  Future<AssetModel> updateAsset(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Body() UpdateAssetRequestModel request,
  );

  @DELETE('/portfolios/{portfolio_id}/assets/{asset_id}')
  Future<IdResponseModel> deleteAsset(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
  );

  @PATCH('/portfolios/{portfolio_id}/assets/{asset_id}/move/{new_portfolio_id}')
  Future<IdResponseModel> moveAsset(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Path('new_portfolio_id') int newPortfolioId,
  );

  // ============ Transaction Endpoints ============
  @POST('/portfolios/{portfolio_id}/assets/{asset_id}/tx')
  Future<TransactionModel> createTransaction(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Body() CreateTransactionRequestModel request,
  );

  @GET('/portfolios/{portfolio_id}/assets/{asset_id}/tx')
  Future<List<TransactionListItemModel>> getTransactions(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
  );

  @GET('/portfolios/{portfolio_id}/assets/{asset_id}/tx/{tx_id}')
  Future<TransactionModel> getTransaction(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Path('tx_id') int txId,
  );

  @PUT('/portfolios/{portfolio_id}/assets/{asset_id}/tx/{tx_id}')
  Future<TransactionModel> updateTransaction(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Path('tx_id') int txId,
    @Body() UpdateTransactionRequestModel request,
  );

  @DELETE('/portfolios/{portfolio_id}/assets/{asset_id}/tx/{tx_id}')
  Future<IdResponseModel> deleteTransaction(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Path('tx_id') int txId,
  );

  @POST('/portfolios/{portfolio_id}/assets/{asset_id}/txs')
  Future<List<BulkTransactionResponseModel>> bulkUploadTransactions(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
    @Body() BulkTransactionRequestModel request,
  );

  @DELETE('/portfolios/{portfolio_id}/assets/{asset_id}/txs')
  Future<IdResponseModel> deleteAllTransactions(
    @Path('portfolio_id') int portfolioId,
    @Path('asset_id') int assetId,
  );

  // ============ Lookup/Search Endpoints ============
  @GET('/lookup/ticker')
  Future<QuoteSearchResponseModel> searchTicker(
    @Query('term') String term,
  );

  @GET('/lookup/quote/{base}')
  Future<PriceQuoteModel> getQuote(
    @Path('base') String base,
  );

  @GET('/lookup/quote/{base}/{date}')
  Future<PriceQuoteModel> getQuoteForDate(
    @Path('base') String base,
    @Path('date') String date,
  );

  @GET('/lookup/fx/{base}/{ccy}')
  Future<FxRateModel> getFxRate(
    @Path('base') String base,
    @Path('ccy') String ccy,
  );

  @GET('/lookup/fx/{base}/{ccy}/{date}')
  Future<FxRateModel> getFxRateForDate(
    @Path('base') String base,
    @Path('ccy') String ccy,
    @Path('date') String date,
  );
}

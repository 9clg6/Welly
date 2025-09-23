import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Get user use case
final class GetUserUseCase extends FutureUseCase<UserEntity> {
  /// Get user use case constructor
  GetUserUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  @override
  Future<UserEntity> invoke() {
    return _userRepository.getUser();
  }
}

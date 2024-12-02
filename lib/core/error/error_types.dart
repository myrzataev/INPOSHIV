enum ErrorType {
  network,
  server,
  timeout,
  client,
  unauthorized,
  forbidden,
  notFound,
  validation,
  unknown,
  authorization, // Группа для всех ошибок авторизации
  other, // Группа для других ошибок
}

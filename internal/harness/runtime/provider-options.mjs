export function codexConfig(request) {
  const fastMode = request.options?.fast_mode === 'true';
  return {
    service_tier: fastMode ? 'fast' : 'default',
    features: { fast_mode: true },
  };
}

export function ompACPArgs(request, hookPath) {
  return [
    'acp',
    '--hook', hookPath,
    ...(request.effort ? [`--thinking=${request.effort}`] : []),
    ...(request.options?.advisor === 'true' ? ['--advisor'] : []),
  ];
}

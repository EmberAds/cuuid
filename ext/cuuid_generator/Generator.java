package com.emberads.cuuid;

import java.util.UUID;

public class Generator {

  private static String generate() {
    return UUID.randomUUID().toString();
  }

}

.class public Lo/BiometricPrompt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lo/BiometricPrompt;

    sput-object v0, Lo/BiometricPrompt;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lo/BiometricPrompt;
    .locals 1

    .line 39
    new-instance v0, Lo/BiometricPrompt;

    invoke-direct {v0}, Lo/BiometricPrompt;-><init>()V

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 189
    :try_start_0
    sget-object v0, Lo/BiometricPrompt;->a:Ljava/lang/Class;

    const-string v1, "Count = %d"

    iget-object v2, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 53
    iget-object v0, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyFaceDetectMapper;

    .line 54
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 55
    invoke-direct {p0}, Lo/BiometricPrompt;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lo/MacAuthenticatedInputStream;)Z
    .locals 1

    .line 81
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyFaceDetectMapper;

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->d()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    throw v0

    :catchall_1
    move-exception p1

    .line 85
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized c(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)Z
    .locals 5

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 107
    iget-object v0, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LegacyFaceDetectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    monitor-exit p0

    return v1

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lo/LegacyFaceDetectMapper;->a()Lo/CompatibilityInfo;

    move-result-object v2

    .line 114
    invoke-virtual {p2}, Lo/LegacyFaceDetectMapper;->a()Lo/CompatibilityInfo;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 116
    :try_start_2
    invoke-virtual {v2}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :try_start_3
    invoke-static {p2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 122
    invoke-static {v2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 123
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 126
    invoke-direct {p0}, Lo/BiometricPrompt;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x1

    .line 127
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 121
    :try_start_4
    invoke-static {p2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 122
    invoke-static {v2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 123
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    throw p1

    .line 121
    :cond_2
    :goto_0
    invoke-static {p2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 122
    invoke-static {v2}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    .line 123
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lo/MacAuthenticatedInputStream;)Lo/LegacyFaceDetectMapper;
    .locals 6

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LegacyFaceDetectMapper;

    if-eqz v0, :cond_1

    .line 138
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    :try_start_1
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->c(Lo/LegacyFaceDetectMapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lo/BiometricPrompt;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lo/BiometricPrompt;->a:Ljava/lang/Class;

    const-string v2, "Found closed reference %d for key %s (%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 147
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 148
    invoke-interface {p1}, Lo/MacAuthenticatedInputStream;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 149
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 144
    invoke-static {v1, v2, v3}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 150
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 152
    :cond_0
    :try_start_2
    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    .line 153
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    move-object p1, v0

    .line 155
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

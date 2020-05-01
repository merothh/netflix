.class public Lo/ServiceWorkerController;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Z
    .locals 5

    const-string v0, "nf_testutils"

    .line 18
    invoke-static {}, Lo/aek;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 23
    :cond_0
    invoke-static {}, Lo/adk;->e()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    const-string v1, "com.netflix.mediaclient.test.NetflixTestRunner"

    .line 32
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "isRunningPushNotificationsTest"

    new-array v4, v2, [Ljava/lang/Class;

    .line 44
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 53
    :try_start_2
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    const-string v1, "Unexpected error when checking if test needs push notifications. Push notifications should be turned on"

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_1
    const-string v1, "Error when looking for the runner\'s method that checks if test needs push notifications. Push notifications should be turned on."

    .line 47
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_2
    const-string v1, "The Netflix application is not running under test. Push notifications should be turned on."

    .line 35
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

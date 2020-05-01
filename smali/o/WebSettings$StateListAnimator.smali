.class public final Lo/WebSettings$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebSettings;->e(Ljava/lang/String;Z)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static d:I = 0x1

.field private static e:I


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/WebSettings$StateListAnimator;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lo/WebSettings$StateListAnimator;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lo/WebStorage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "d"

    const-string v1, "emitter"

    invoke-static {p1, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    const-string v2, "LOTTIE_COMPOSITION_LOAD"

    .line 49
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v1, p0, Lo/WebSettings$StateListAnimator;->a:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v4, "startTime"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 58
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 211
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lo/WebSettings$StateListAnimator;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v6, 0x2

    :try_start_1
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x0

    aput-object v1, v7, v2

    const/16 v1, 0x11

    const/16 v9, 0x7db6

    invoke-static {v9, v1, v2}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Landroid/content/res/AssetManager;

    aput-object v12, v11, v2

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {v10, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v7}, Lo/aqn;->d(Ljava/io/InputStream;)Lo/aqp;

    move-result-object v7

    invoke-static {v7}, Lo/aqn;->a(Lo/aqp;)Lo/aqm;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e(Lo/aqm;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object v7

    iget-object v10, p0, Lo/WebSettings$StateListAnimator;->a:Ljava/lang/String;

    .line 57
    invoke-static {v7, v10}, Lo/DHGenParameterSpec;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/DHParameterSpec;

    move-result-object v7

    .line 61
    iget-boolean v10, p0, Lo/WebSettings$StateListAnimator;->b:Z

    const/16 v12, 0x21

    if-eqz v10, :cond_0

    const/16 v10, 0x21

    goto :goto_0

    :cond_0
    const/16 v10, 0x19

    :goto_0
    if-eq v10, v12, :cond_1

    .line 66
    new-instance v0, Lkotlin/Triple;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    sget v1, Lo/WebSettings$StateListAnimator;->e:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    :try_start_4
    sput v2, Lo/WebSettings$StateListAnimator;->d:I

    rem-int/2addr v1, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v2, 0x33

    if-nez v1, :cond_2

    const/16 v6, 0x33

    goto :goto_1

    :catch_0
    move-exception p1

    .line 69
    throw p1

    :catch_1
    move-exception p1

    .line 61
    throw p1

    .line 0
    :cond_1
    sget v10, Lo/WebSettings$StateListAnimator;->e:I

    add-int/lit8 v10, v10, 0x49

    rem-int/lit16 v12, v10, 0x80

    sput v12, Lo/WebSettings$StateListAnimator;->d:I

    rem-int/2addr v10, v6

    .line 62
    :try_start_5
    sget-object v10, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 212
    const-class v10, Landroid/content/Context;

    invoke-static {v10}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 62
    iget-object v12, p0, Lo/WebSettings$StateListAnimator;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-array v13, v6, [Ljava/lang/Object;

    aput-object v12, v13, v8

    aput-object v10, v13, v2

    invoke-static {v9, v1, v2}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/res/AssetManager;

    aput-object v9, v6, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v6, v8

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    check-cast v0, Ljava/io/Closeable;

    check-cast v11, Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .line 63
    sget-object v2, Lo/WebSettings;->d:Lo/WebSettings;

    const-string v6, "inputStream"

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lo/WebSettings;->a(Lo/WebSettings;Ljava/io/InputStream;Lorg/json/JSONObject;)Lkotlin/Triple;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 62
    :try_start_9
    invoke-static {v0, v11}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lkotlin/Triple;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Triple;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lkotlin/Triple;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 69
    sget-object v0, Lo/WebSettings;->d:Lo/WebSettings;

    const-string v2, "lottieTask"

    invoke-static {v7, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lo/WebSettings;->a(Lo/WebSettings;Lo/DHParameterSpec;)Lio/reactivex/Single;

    move-result-object v0

    .line 70
    new-instance v10, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;

    move-object v2, v10

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$2;-><init>(Lorg/json/JSONObject;JLio/reactivex/SingleEmitter;Ljava/util/List;II)V

    check-cast v10, Lo/alA;

    .line 79
    new-instance v1, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$3;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/android/lottie/NetflixLottieHelperV2$loadCompositionFromAssetFile$1$3;-><init>(Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lo/alA;

    .line 69
    invoke-static {v0, v1, v10}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 62
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v2

    .line 69
    :try_start_b
    invoke-static {v0, v1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_2
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v0

    :catchall_3
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    .line 88
    sget-object v1, Lo/WebSettings;->d:Lo/WebSettings;

    check-cast v1, Lo/MessagePdu;

    .line 92
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

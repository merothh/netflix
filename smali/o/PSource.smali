.class public Lo/PSource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/DESKeySpec;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/airbnb/lottie/LottieAnimationView;

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/PSource;->c:Ljava/util/Map;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lo/PSource;->e:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lo/PSource;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    iput-object v0, p0, Lo/PSource;->b:Lo/DESKeySpec;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 84
    iget-boolean v0, p0, Lo/PSource;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PSource;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lo/PSource;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lo/PSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lo/PSource;->e:Z

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lo/PSource;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

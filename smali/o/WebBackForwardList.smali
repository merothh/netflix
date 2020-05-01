.class public abstract Lo/WebBackForwardList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebBackForwardList$StateListAnimator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/WebBackForwardList;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lo/TracingController$ActionBar;

    invoke-direct {v0, p0}, Lo/TracingController$ActionBar;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method private static c()Lo/WebBackForwardList;
    .locals 2

    .line 44
    new-instance v0, Lo/TracingController;

    invoke-static {}, Lo/ValueCallback;->a()Lo/ValueCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/TracingController;-><init>(Lo/ValueCallback;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lo/WebBackForwardList;
    .locals 2

    .line 33
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lo/WebBackForwardList;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/WebBackForwardList;

    if-nez p0, :cond_0

    .line 34
    invoke-static {}, Lo/WebBackForwardList;->c()Lo/WebBackForwardList;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract a()Lo/ValueCallback;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osInfo"
    .end annotation
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 39
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lo/WebBackForwardList$StateListAnimator;
.end method

.class public Lo/ajf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uber/autodispose/ScopeProvider;


# static fields
.field public static final b:Lo/ajf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ajf;

    invoke-direct {v0}, Lo/ajf;-><init>()V

    sput-object v0, Lo/ajf;->b:Lo/ajf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lio/reactivex/CompletableSource;
    .locals 1

    invoke-static {}, Lio/reactivex/Completable;->never()Lio/reactivex/Completable;

    move-result-object v0

    check-cast v0, Lio/reactivex/CompletableSource;

    return-object v0
.end method

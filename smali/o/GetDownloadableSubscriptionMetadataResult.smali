.class public Lo/GetDownloadableSubscriptionMetadataResult;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final b:Lo/GetDownloadableSubscriptionMetadataResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/GetDownloadableSubscriptionMetadataResult;

    invoke-direct {v0}, Lo/GetDownloadableSubscriptionMetadataResult;-><init>()V

    sput-object v0, Lo/GetDownloadableSubscriptionMetadataResult;->b:Lo/GetDownloadableSubscriptionMetadataResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-static {p1}, Lcom/netflix/mediaclient/NetflixApplication;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p1

    return-object p1
.end method

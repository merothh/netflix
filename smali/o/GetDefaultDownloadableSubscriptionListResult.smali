.class public Lo/GetDefaultDownloadableSubscriptionListResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uber/rxdogtag/RxDogTag$Configurer;


# static fields
.field public static final d:Lo/GetDefaultDownloadableSubscriptionListResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/GetDefaultDownloadableSubscriptionListResult;

    invoke-direct {v0}, Lo/GetDefaultDownloadableSubscriptionListResult;-><init>()V

    sput-object v0, Lo/GetDefaultDownloadableSubscriptionListResult;->d:Lo/GetDefaultDownloadableSubscriptionListResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/uber/rxdogtag/RxDogTag$Builder;)V
    .locals 0

    invoke-static {p1}, Lcom/uber/rxdogtag/autodispose/AutoDisposeConfigurer;->e(Lcom/uber/rxdogtag/RxDogTag$Builder;)V

    return-void
.end method

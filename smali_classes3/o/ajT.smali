.class public Lo/ajT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;


# static fields
.field public static final d:Lo/ajT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ajT;

    invoke-direct {v0}, Lo/ajT;-><init>()V

    sput-object v0, Lo/ajT;->d:Lo/ajT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-static {p1}, Lcom/uber/rxdogtag/RxDogTag;->e(Ljava/lang/StackTraceElement;)Z

    move-result p1

    return p1
.end method

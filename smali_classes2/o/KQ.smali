.class Lo/KQ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final d:Lo/KQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/KQ;

    invoke-direct {v0}, Lo/KQ;-><init>()V

    sput-object v0, Lo/KQ;->d:Lo/KQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lo/KL;->b(Ljava/lang/Throwable;)V

    return-void
.end method
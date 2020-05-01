.class Lo/IM;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final a:Lo/IM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/IM;

    invoke-direct {v0}, Lo/IM;-><init>()V

    sput-object v0, Lo/IM;->a:Lo/IM;

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

    invoke-static {p1}, Lo/IL;->b(Ljava/lang/Throwable;)V

    return-void
.end method

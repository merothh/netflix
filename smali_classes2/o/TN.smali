.class Lo/TN;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final a:Lo/TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/TN;

    invoke-direct {v0}, Lo/TN;-><init>()V

    sput-object v0, Lo/TN;->a:Lo/TN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lo/UP;

    invoke-static {p1}, Lo/TC;->a(Lo/UP;)Z

    move-result p1

    return p1
.end method

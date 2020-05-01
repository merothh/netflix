.class final Lo/amY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ana;


# static fields
.field public static final a:Lo/amY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/amY;

    invoke-direct {v0}, Lo/amY;-><init>()V

    sput-object v0, Lo/amY;->a:Lo/amY;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic c(I)Lo/anb;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lo/amY;->d(I)Lo/amY;

    move-result-object p1

    check-cast p1, Lo/anb;

    return-object p1
.end method

.method public d()Ljava/util/Iterator;
    .locals 1

    .line 43
    sget-object v0, Lo/akJ;->a:Lo/akJ;

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public d(I)Lo/amY;
    .locals 0

    .line 45
    sget-object p1, Lo/amY;->a:Lo/amY;

    return-object p1
.end method

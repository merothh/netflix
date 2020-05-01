.class Lo/Ro;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final d:Lo/Ro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Ro;

    invoke-direct {v0}, Lo/Ro;-><init>()V

    sput-object v0, Lo/Ro;->d:Lo/Ro;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/Tf;

    check-cast p2, Lo/Tf;

    invoke-static {p1, p2}, Lo/Rn;->c(Lo/Tf;Lo/Tf;)I

    move-result p1

    return p1
.end method

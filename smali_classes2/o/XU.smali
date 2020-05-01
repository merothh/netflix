.class Lo/XU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final c:Lo/XU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/XU;

    invoke-direct {v0}, Lo/XU;-><init>()V

    sput-object v0, Lo/XU;->c:Lo/XU;

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

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lo/XN;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

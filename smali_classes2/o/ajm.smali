.class public Lo/ajm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final d:Lo/ajm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ajm;

    invoke-direct {v0}, Lo/ajm;-><init>()V

    sput-object v0, Lo/ajm;->d:Lo/ajm;

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

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

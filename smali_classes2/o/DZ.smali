.class Lo/DZ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final e:Lo/DZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/DZ;

    invoke-direct {v0}, Lo/DZ;-><init>()V

    sput-object v0, Lo/DZ;->e:Lo/DZ;

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

    invoke-static {p1}, Lo/DY;->a(Ljava/lang/Throwable;)V

    return-void
.end method

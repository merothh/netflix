.class Lo/Ma;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final c:Lo/Ma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Ma;

    invoke-direct {v0}, Lo/Ma;-><init>()V

    sput-object v0, Lo/Ma;->c:Lo/Ma;

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

    invoke-static {p1}, Lo/Mb;->e(Ljava/lang/Throwable;)V

    return-void
.end method

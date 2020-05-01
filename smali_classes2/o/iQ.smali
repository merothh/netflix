.class Lo/iQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Lo/iQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/iQ;

    invoke-direct {v0}, Lo/iQ;-><init>()V

    sput-object v0, Lo/iQ;->c:Lo/iQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lo/iP;->p()V

    return-void
.end method

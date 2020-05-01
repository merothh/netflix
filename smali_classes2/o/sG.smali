.class Lo/sG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Lo/sG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/sG;

    invoke-direct {v0}, Lo/sG;-><init>()V

    sput-object v0, Lo/sG;->c:Lo/sG;

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

    invoke-static {}, Lo/sz;->i()V

    return-void
.end method

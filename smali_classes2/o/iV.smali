.class Lo/iV;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Lo/iV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/iV;

    invoke-direct {v0}, Lo/iV;-><init>()V

    sput-object v0, Lo/iV;->b:Lo/iV;

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

    invoke-static {}, Lo/iT;->d()V

    return-void
.end method

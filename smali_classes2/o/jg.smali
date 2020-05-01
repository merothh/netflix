.class Lo/jg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:Lo/jg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/jg;

    invoke-direct {v0}, Lo/jg;-><init>()V

    sput-object v0, Lo/jg;->d:Lo/jg;

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

    invoke-static {}, Lo/jd;->a()V

    return-void
.end method

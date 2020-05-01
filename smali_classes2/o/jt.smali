.class public final Lo/jt;
.super Lo/MessagePdu;
.source ""

# interfaces
.implements Lo/zu;


# static fields
.field public static final a:Lo/jt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/jt;

    invoke-direct {v0}, Lo/jt;-><init>()V

    sput-object v0, Lo/jt;->a:Lo/jt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "DefaultBreadcrumbLogging"

    .line 10
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "breadcrumb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    return-void
.end method

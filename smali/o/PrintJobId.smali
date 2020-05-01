.class public final Lo/PrintJobId;
.super Lo/PrinterCapabilitiesInfo;
.source ""


# static fields
.field private static final a:Ljava/lang/Integer;

.field public static final e:Lo/PrintJobId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lo/PrintJobId;

    invoke-direct {v0}, Lo/PrintJobId;-><init>()V

    sput-object v0, Lo/PrintJobId;->e:Lo/PrintJobId;

    const/4 v0, 0x4

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/PrintJobId;->a:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lo/PrinterCapabilitiesInfo;-><init>(Lo/amc;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/Integer;
    .locals 1

    .line 199
    sget-object v0, Lo/PrintJobId;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public o_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

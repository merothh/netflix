.class public final Lo/fT;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fT$Application;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field public static final e:Lo/fT$Application;


# instance fields
.field private percentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percentage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fT$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fT$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/fT;->e:Lo/fT$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/16 v0, 0x64

    .line 13
    iput v0, p0, Lo/fT;->percentage:I

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Boolean;
    .locals 1

    .line 10
    sget-object v0, Lo/fT;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/Boolean;)V
    .locals 0

    .line 10
    sput-object p0, Lo/fT;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 13
    iget v0, p0, Lo/fT;->percentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "clhe_sampling_config"

    return-object v0
.end method

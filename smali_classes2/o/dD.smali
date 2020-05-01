.class public final Lo/dD;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dD$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/dD$TaskDescription;


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dD$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dD$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dD;->a:Lo/dD$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "10605"

    .line 15
    iput-object v0, p0, Lo/dD;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lo/dD;->d:I

    return-void
.end method

.method public static final C_()Z
    .locals 1

    sget-object v0, Lo/dD;->a:Lo/dD$TaskDescription;

    invoke-virtual {v0}, Lo/dD$TaskDescription;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public B_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/dD;->e:Ljava/lang/String;

    return-object v0
.end method

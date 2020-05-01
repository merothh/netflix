.class public final Lo/fJ;
.super Lo/fQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fJ$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/fJ$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fJ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fJ$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fJ;->d:Lo/fJ$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/fQ;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "22912"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "22912"

    return-object v0
.end method

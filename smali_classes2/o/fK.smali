.class public final Lo/fK;
.super Lo/fQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fK$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/fK$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fK$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fK$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fK;->c:Lo/fK$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/fQ;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "21560"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "21560"

    return-object v0
.end method

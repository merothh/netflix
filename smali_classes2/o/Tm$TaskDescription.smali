.class public final Lo/Tm$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Tm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ProfilePinDialog"

    .line 28
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/Tm$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lo/Tm;
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Lo/Tm$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 33
    new-instance v0, Lo/Tm;

    invoke-direct {v0, p1, p2}, Lo/Tm;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V

    return-object v0
.end method

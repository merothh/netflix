.class public final Lo/abJ$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SurveyFragment"

    .line 156
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lo/abJ$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/model/survey/Survey;)Lo/abJ;
    .locals 3

    const-string v0, "survey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lo/abJ;

    invoke-direct {v0}, Lo/abJ;-><init>()V

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Landroid/os/Parcelable;

    const-string v2, "extra_survey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lo/abJ;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

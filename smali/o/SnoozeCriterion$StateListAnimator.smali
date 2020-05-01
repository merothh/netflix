.class public final Lo/SnoozeCriterion$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SnoozeCriterion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/SnoozeCriterion$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;Ljava/lang/String;)Lo/SnoozeCriterion;
    .locals 4

    const-string v0, "phoneCodesData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lo/SnoozeCriterion;

    invoke-direct {v1}, Lo/SnoozeCriterion;-><init>()V

    .line 37
    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->I:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lo/SnoozeCriterion;->setStyle(II)V

    .line 38
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "currentLocationId"

    .line 40
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v2}, Lo/SnoozeCriterion;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

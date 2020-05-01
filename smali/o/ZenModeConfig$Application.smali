.class final Lo/ZenModeConfig$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZenModeConfig;->c(Lo/ZenModeConfig$Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

.field final synthetic e:Lo/ZenModeConfig;


# direct methods
.method constructor <init>(Lo/ZenModeConfig;Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;)V
    .locals 0

    iput-object p1, p0, Lo/ZenModeConfig$Application;->e:Lo/ZenModeConfig;

    iput-object p2, p0, Lo/ZenModeConfig$Application;->a:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lo/ZenModeConfig$Application;->e:Lo/ZenModeConfig;

    invoke-static {p1}, Lo/ZenModeConfig;->a(Lo/ZenModeConfig;)Lo/SnoozeCriterion$Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ZenModeConfig$Application;->a:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SnoozeCriterion$Application;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;)V

    :cond_0
    return-void
.end method

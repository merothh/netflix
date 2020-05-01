.class final Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

.field final synthetic c:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic e:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->c:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->e:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    .line 108
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->c:Landroidx/appcompat/widget/SwitchCompat;

    const-string v2, "kidsSwitch"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->e:Landroidx/appcompat/widget/SwitchCompat;

    const-string v2, "teensSwitch"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    goto :goto_0

    .line 110
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    .line 107
    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$inflateLayout$switchChanged$1;->b()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method

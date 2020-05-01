.class final Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic c:Lo/alB;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Lo/alB;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;->a:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;->c:Lo/alB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;->a:Landroidx/appcompat/widget/SwitchCompat;

    const-string p2, "teensSwitch"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$StateListAnimator;->c:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method

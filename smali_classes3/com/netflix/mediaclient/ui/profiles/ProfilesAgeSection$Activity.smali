.class final Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qc:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById<RadioButton>(R.id.radio_button_kids)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    sget-object p2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qb:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById<RadioButton>(R.id.radio_button_teens)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    sget-object p2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qe:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById<RadioButton\u2026R.id.radio_button_adults)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Activity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    sget-object p2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    :cond_2
    :goto_0
    return-void
.end method

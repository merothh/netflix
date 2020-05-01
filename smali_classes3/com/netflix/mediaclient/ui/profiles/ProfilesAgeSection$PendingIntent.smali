.class final Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$PendingIntent;
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
.field final synthetic e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$PendingIntent;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$PendingIntent;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->e:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    :goto_0
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;->c(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method

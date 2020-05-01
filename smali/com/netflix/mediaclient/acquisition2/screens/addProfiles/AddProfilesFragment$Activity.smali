.class final Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->v()V

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object p1

    invoke-virtual {p1}, Lo/SidePropagation;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;->c:Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object p1

    invoke-virtual {p1}, Lo/SidePropagation;->h()V

    :cond_0
    return-void
.end method

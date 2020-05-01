.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lo/BaseAdapter;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/BaseAdapter;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "img"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topEditImg"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockIcon"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->b:Lo/BaseAdapter;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final b()Lo/BaseAdapter;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->b:Lo/BaseAdapter;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->c:Landroid/view/View;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->d:Landroid/view/View;

    return-object v0
.end method

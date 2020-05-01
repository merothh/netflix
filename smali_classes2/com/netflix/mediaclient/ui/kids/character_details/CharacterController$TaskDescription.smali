.class final Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->buildModels(Lo/IJ$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/IJ$ActionBar;

.field final synthetic e:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;


# direct methods
.method constructor <init>(Lo/IJ$ActionBar;Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;->a:Lo/IJ$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;->e:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;->e:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$TaskDescription;->a:Lo/IJ$ActionBar;

    invoke-virtual {v0}, Lo/IJ$ActionBar;->c()Lo/Bc;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->access$startPlay(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;Lo/Bc;)V

    return-void
.end method

.class final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar$5;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar$5;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;->a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;Lo/Am;)V

    return-void
.end method

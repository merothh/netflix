.class public final Lo/YY$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/YY;


# direct methods
.method constructor <init>(Lo/YY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lo/YY$LoaderManager;->a:Lo/YY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V
    .locals 1

    const-string v0, "initialAge"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAge"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lo/YY$LoaderManager;->a:Lo/YY;

    invoke-static {v0, p1, p2}, Lo/YY;->c(Lo/YY;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;)V

    return-void
.end method

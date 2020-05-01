.class public Lo/abm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abm;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lo/abm;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

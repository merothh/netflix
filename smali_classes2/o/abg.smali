.class public Lo/abg;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abg;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lo/abg;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.class public Lo/abx;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$Application;


# instance fields
.field private final b:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abx;->b:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public e(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lo/abx;->b:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

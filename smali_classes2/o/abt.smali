.class public Lo/abt;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$Application;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

.field private final c:Landroidx/preference/ListPreference;

.field private final d:Lo/Am;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/ListPreference;Lo/Am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abt;->a:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lo/abt;->c:Landroidx/preference/ListPreference;

    iput-object p3, p0, Lo/abt;->d:Lo/Am;

    return-void
.end method


# virtual methods
.method public e(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lo/abt;->a:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v1, p0, Lo/abt;->c:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lo/abt;->d:Lo/Am;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/ListPreference;Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

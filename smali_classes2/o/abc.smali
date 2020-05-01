.class public Lo/abc;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# instance fields
.field private final a:Landroidx/preference/Preference;

.field private final d:Lo/nS;

.field private final e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abc;->e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lo/abc;->d:Lo/nS;

    iput-object p3, p0, Lo/abc;->a:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lo/abc;->e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v1, p0, Lo/abc;->d:Lo/nS;

    iget-object v2, p0, Lo/abc;->a:Landroidx/preference/Preference;

    invoke-static {v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

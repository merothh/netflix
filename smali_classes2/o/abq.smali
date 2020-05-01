.class public Lo/abq;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# instance fields
.field private final a:Lo/Am;

.field private final b:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abq;->b:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lo/abq;->a:Lo/Am;

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lo/abq;->b:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v1, p0, Lo/abq;->a:Lo/Am;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

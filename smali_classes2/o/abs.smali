.class public Lo/abs;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$Application;


# instance fields
.field private final d:Lo/Am;

.field private final e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abs;->e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lo/abs;->d:Lo/Am;

    return-void
.end method


# virtual methods
.method public e(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lo/abs;->e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v1, p0, Lo/abs;->d:Lo/Am;

    invoke-static {v0, v1, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

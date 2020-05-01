.class public Lo/abe;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# instance fields
.field private final c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abe;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lo/abe;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

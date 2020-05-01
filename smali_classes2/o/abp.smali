.class public Lo/abp;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# static fields
.field public static final b:Lo/abp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/abp;

    invoke-direct {v0}, Lo/abp;-><init>()V

    sput-object v0, Lo/abp;->b:Lo/abp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

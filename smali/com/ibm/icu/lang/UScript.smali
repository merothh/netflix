.class public final Lcom/ibm/icu/lang/UScript;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/lang/UScript$ScriptUsage;
    }
.end annotation


# static fields
.field private static final usageValues:[Lcom/ibm/icu/lang/UScript$ScriptUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1512
    invoke-static {}, Lcom/ibm/icu/lang/UScript$ScriptUsage;->values()[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/lang/UScript;->usageValues:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-void
.end method

.method public static final getScript(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v3, 0x10ffff

    if-gt p0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 1130
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, p0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p0

    const v2, 0xc000ff

    and-int/2addr p0, v2

    const/high16 v2, 0x400000

    if-ge p0, v2, :cond_2

    return p0

    :cond_2
    const/high16 v2, 0x800000

    if-ge p0, v2, :cond_3

    return v1

    :cond_3
    const/high16 v1, 0xc00000

    if-ge p0, v1, :cond_4

    return v0

    .line 1138
    :cond_4
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    and-int/lit16 p0, p0, 0xff

    aget-char p0, v0, p0

    return p0

    .line 1141
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final hasScript(II)Z
    .locals 5

    .line 1159
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p0

    const v0, 0xc000ff

    and-int/2addr p0, v0

    const/4 v0, 0x1

    const/high16 v2, 0x400000

    if-ge p0, v2, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1164
    :cond_1
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v2, v2, Lcom/ibm/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    and-int/lit16 v3, p0, 0xff

    const/high16 v4, 0xc00000

    if-lt p0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 1167
    aget-char v3, v2, v3

    :cond_2
    const/16 p0, 0x7fff

    if-le p1, p0, :cond_3

    return v1

    .line 1174
    :cond_3
    :goto_1
    aget-char v4, v2, v3

    if-le p1, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1177
    :cond_4
    aget-char v2, v2, v3

    and-int/2addr p0, v2

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
